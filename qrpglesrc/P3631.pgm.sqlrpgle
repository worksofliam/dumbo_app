**free

ctl-opt dftactgrp(*no);

dcl-pi P3631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3104.rpgleinc'
/copy 'qrpgleref/P2942.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P3631';
dsply theCharVar;
callp localProc();
P3104();
P2942();
P1287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3631 in the procedure';
end-proc;