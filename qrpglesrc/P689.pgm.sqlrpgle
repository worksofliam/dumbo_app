**free

ctl-opt dftactgrp(*no);

dcl-pi P689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds T58 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T58 FROM T58 LIMIT 1;

theCharVar = 'Hello from P689';
dsply theCharVar;
P132();
P671();
P524();
return;