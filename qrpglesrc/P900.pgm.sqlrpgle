**free

ctl-opt dftactgrp(*no);

dcl-pi P900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'

dcl-ds T1080 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1080 FROM T1080 LIMIT 1;

theCharVar = 'Hello from P900';
dsply theCharVar;
P181();
P132();
P561();
return;