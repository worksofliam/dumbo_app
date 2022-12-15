**free

ctl-opt dftactgrp(*no);

dcl-pi P377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T885') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T885 LIMIT 1;

theCharVar = 'Hello from P377';
dsply theCharVar;
P339();
P360();
P207();
return;