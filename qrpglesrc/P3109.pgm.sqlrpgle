**free

ctl-opt dftactgrp(*no);

dcl-pi P3109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2047.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P2639.rpgleinc'

dcl-ds theTable extname('T312') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T312 LIMIT 1;

theCharVar = 'Hello from P3109';
dsply theCharVar;
P2047();
P181();
P2639();
return;