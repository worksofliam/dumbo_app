**free

ctl-opt dftactgrp(*no);

dcl-pi P3265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P2496.rpgleinc'
/copy 'qrpgleref/P2423.rpgleinc'

dcl-ds theTable extname('T149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T149 LIMIT 1;

theCharVar = 'Hello from P3265';
dsply theCharVar;
callp localProc();
P732();
P2496();
P2423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3265 in the procedure';
end-proc;