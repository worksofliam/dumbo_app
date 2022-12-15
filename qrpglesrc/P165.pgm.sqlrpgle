**free

ctl-opt dftactgrp(*no);

dcl-pi P165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T334 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T334 FROM T334 LIMIT 1;

theCharVar = 'Hello from P165';
dsply theCharVar;
P37();
P101();
P69();
return;