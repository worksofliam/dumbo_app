**free

ctl-opt dftactgrp(*no);

dcl-pi P824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P824';
dsply theCharVar;
P696();
P95();
P181();
return;