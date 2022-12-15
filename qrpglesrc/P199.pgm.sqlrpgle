**free

ctl-opt dftactgrp(*no);

dcl-pi P199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds T908 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T908 FROM T908 LIMIT 1;

theCharVar = 'Hello from P199';
dsply theCharVar;
P69();
P150();
P81();
return;