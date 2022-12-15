**free

ctl-opt dftactgrp(*no);

dcl-pi P1255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds T761 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T761 FROM T761 LIMIT 1;

theCharVar = 'Hello from P1255';
dsply theCharVar;
P773();
P1142();
P484();
return;