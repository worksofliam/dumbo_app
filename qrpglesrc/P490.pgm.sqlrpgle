**free

ctl-opt dftactgrp(*no);

dcl-pi P490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds T98 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T98 FROM T98 LIMIT 1;

theCharVar = 'Hello from P490';
dsply theCharVar;
P292();
P211();
P105();
return;