**free

ctl-opt dftactgrp(*no);

dcl-pi P2027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1223.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds T708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T708 FROM T708 LIMIT 1;

theCharVar = 'Hello from P2027';
dsply theCharVar;
callp localProc();
P1223();
P425();
P1218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2027 in the procedure';
end-proc;