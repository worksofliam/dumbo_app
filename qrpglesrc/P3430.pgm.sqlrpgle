**free

ctl-opt dftactgrp(*no);

dcl-pi P3430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2229.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P3408.rpgleinc'

dcl-ds T620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T620 FROM T620 LIMIT 1;

theCharVar = 'Hello from P3430';
dsply theCharVar;
P2229();
P737();
P3408();
return;