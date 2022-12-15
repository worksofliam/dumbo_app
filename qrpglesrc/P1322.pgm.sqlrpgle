**free

ctl-opt dftactgrp(*no);

dcl-pi P1322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds T288 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T288 FROM T288 LIMIT 1;

theCharVar = 'Hello from P1322';
dsply theCharVar;
callp localProc();
P314();
P1271();
P308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1322 in the procedure';
end-proc;