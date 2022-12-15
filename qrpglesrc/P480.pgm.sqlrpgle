**free

ctl-opt dftactgrp(*no);

dcl-pi P480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds T411 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T411 FROM T411 LIMIT 1;

theCharVar = 'Hello from P480';
dsply theCharVar;
P326();
P208();
P402();
return;