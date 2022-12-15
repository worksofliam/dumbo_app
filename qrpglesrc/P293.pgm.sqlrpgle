**free

ctl-opt dftactgrp(*no);

dcl-pi P293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T165 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T165 FROM T165 LIMIT 1;

theCharVar = 'Hello from P293';
dsply theCharVar;
P77();
P101();
P5();
return;