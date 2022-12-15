**free

ctl-opt dftactgrp(*no);

dcl-pi P2711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1056.rpgleinc'
/copy 'qrpgleref/P2254.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'

dcl-ds T1220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1220 FROM T1220 LIMIT 1;

theCharVar = 'Hello from P2711';
dsply theCharVar;
P1056();
P2254();
P1829();
return;