**free

ctl-opt dftactgrp(*no);

dcl-pi P3284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1971.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P2952.rpgleinc'

dcl-ds T412 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T412 FROM T412 LIMIT 1;

theCharVar = 'Hello from P3284';
dsply theCharVar;
P1971();
P1011();
P2952();
return;