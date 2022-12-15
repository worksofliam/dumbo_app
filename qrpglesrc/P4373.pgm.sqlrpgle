**free

ctl-opt dftactgrp(*no);

dcl-pi P4373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2816.rpgleinc'
/copy 'qrpgleref/P1015.rpgleinc'
/copy 'qrpgleref/P2122.rpgleinc'

dcl-ds T812 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T812 FROM T812 LIMIT 1;

theCharVar = 'Hello from P4373';
dsply theCharVar;
P2816();
P1015();
P2122();
return;