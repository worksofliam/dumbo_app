**free

ctl-opt dftactgrp(*no);

dcl-pi P2783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P1911.rpgleinc'
/copy 'qrpgleref/P2549.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P2783';
dsply theCharVar;
callp localProc();
P2024();
P1911();
P2549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2783 in the procedure';
end-proc;