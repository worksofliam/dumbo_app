**free

ctl-opt dftactgrp(*no);

dcl-pi P1222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P986.rpgleinc'
/copy 'qrpgleref/P1047.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'

dcl-ds T1597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1597 FROM T1597 LIMIT 1;

theCharVar = 'Hello from P1222';
dsply theCharVar;
P986();
P1047();
P338();
return;