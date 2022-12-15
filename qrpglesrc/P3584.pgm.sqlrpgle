**free

ctl-opt dftactgrp(*no);

dcl-pi P3584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P928.rpgleinc'
/copy 'qrpgleref/P1224.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'

dcl-ds T254 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T254 FROM T254 LIMIT 1;

theCharVar = 'Hello from P3584';
dsply theCharVar;
P928();
P1224();
P3033();
return;