**free

ctl-opt dftactgrp(*no);

dcl-pi P1681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'

dcl-ds T862 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T862 FROM T862 LIMIT 1;

theCharVar = 'Hello from P1681';
dsply theCharVar;
callp localProc();
P903();
P920();
P997();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1681 in the procedure';
end-proc;