**free

ctl-opt dftactgrp(*no);

dcl-pi P293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T789') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T789 LIMIT 1;

theCharVar = 'Hello from P293';
dsply theCharVar;
P121();
P218();
P85();
return;