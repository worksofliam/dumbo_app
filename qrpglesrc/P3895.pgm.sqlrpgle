**free

ctl-opt dftactgrp(*no);

dcl-pi P3895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2083.rpgleinc'
/copy 'qrpgleref/P2442.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'

dcl-ds T626 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T626 FROM T626 LIMIT 1;

theCharVar = 'Hello from P3895';
dsply theCharVar;
P2083();
P2442();
P408();
return;