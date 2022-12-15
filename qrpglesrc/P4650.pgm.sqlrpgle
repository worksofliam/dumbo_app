**free

ctl-opt dftactgrp(*no);

dcl-pi P4650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4535.rpgleinc'
/copy 'qrpgleref/P4015.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds T12 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T12 FROM T12 LIMIT 1;

theCharVar = 'Hello from P4650';
dsply theCharVar;
P4535();
P4015();
P569();
return;