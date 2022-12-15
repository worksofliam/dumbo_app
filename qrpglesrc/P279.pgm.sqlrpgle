**free

ctl-opt dftactgrp(*no);

dcl-pi P279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P279';
dsply theCharVar;
P255();
P90();
P278();
return;