**free

ctl-opt dftactgrp(*no);

dcl-pi P458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T116 LIMIT 1;

theCharVar = 'Hello from P458';
dsply theCharVar;
P270();
P177();
P105();
return;