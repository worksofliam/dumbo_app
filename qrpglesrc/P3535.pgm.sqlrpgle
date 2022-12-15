**free

ctl-opt dftactgrp(*no);

dcl-pi P3535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2225.rpgleinc'
/copy 'qrpgleref/P2806.rpgleinc'
/copy 'qrpgleref/P2742.rpgleinc'

dcl-ds theTable extname('T1327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1327 LIMIT 1;

theCharVar = 'Hello from P3535';
dsply theCharVar;
P2225();
P2806();
P2742();
return;