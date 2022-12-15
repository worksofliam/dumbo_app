**free

ctl-opt dftactgrp(*no);

dcl-pi P1275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds T555 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T555 FROM T555 LIMIT 1;

theCharVar = 'Hello from P1275';
dsply theCharVar;
P184();
P1155();
P394();
return;