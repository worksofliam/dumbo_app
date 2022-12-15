**free

ctl-opt dftactgrp(*no);

dcl-pi P728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds T199 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T199 FROM T199 LIMIT 1;

theCharVar = 'Hello from P728';
dsply theCharVar;
P700();
P325();
P271();
return;