**free

ctl-opt dftactgrp(*no);

dcl-pi P1034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T497 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T497 FROM T497 LIMIT 1;

theCharVar = 'Hello from P1034';
dsply theCharVar;
P554();
P531();
P43();
return;