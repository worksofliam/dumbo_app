**free

ctl-opt dftactgrp(*no);

dcl-pi P587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds T88 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T88 FROM T88 LIMIT 1;

theCharVar = 'Hello from P587';
dsply theCharVar;
P563();
P260();
P20();
return;