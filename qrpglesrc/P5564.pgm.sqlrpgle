**free

ctl-opt dftactgrp(*no);

dcl-pi P5564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1421.rpgleinc'
/copy 'qrpgleref/P2614.rpgleinc'
/copy 'qrpgleref/P2903.rpgleinc'

dcl-ds theTable extname('T1219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1219 LIMIT 1;

theCharVar = 'Hello from P5564';
dsply theCharVar;
callp localProc();
P1421();
P2614();
P2903();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5564 in the procedure';
end-proc;