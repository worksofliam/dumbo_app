**free

ctl-opt dftactgrp(*no);

dcl-pi P491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds T354 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T354 FROM T354 LIMIT 1;

theCharVar = 'Hello from P491';
dsply theCharVar;
P396();
P114();
P52();
return;