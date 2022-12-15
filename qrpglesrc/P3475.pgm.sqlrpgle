**free

ctl-opt dftactgrp(*no);

dcl-pi P3475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2468.rpgleinc'
/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'

dcl-ds theTable extname('T568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T568 LIMIT 1;

theCharVar = 'Hello from P3475';
dsply theCharVar;
P2468();
P2261();
P1469();
return;