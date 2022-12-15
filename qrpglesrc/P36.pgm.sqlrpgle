**free

ctl-opt dftactgrp(*no);

dcl-pi P36;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P36';
dsply theCharVar;
P26();
P18();
P29();
return;