**free

ctl-opt dftactgrp(*no);

dcl-pi P1149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1132.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds T280 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T280 FROM T280 LIMIT 1;

theCharVar = 'Hello from P1149';
dsply theCharVar;
callp localProc();
P1132();
P37();
P973();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1149 in the procedure';
end-proc;