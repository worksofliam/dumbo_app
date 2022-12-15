**free

ctl-opt dftactgrp(*no);

dcl-pi P129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T110 LIMIT 1;

theCharVar = 'Hello from P129';
dsply theCharVar;
P69();
P78();
P13();
return;