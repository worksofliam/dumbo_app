**free

ctl-opt dftactgrp(*no);

dcl-pi P1622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'

dcl-ds T199 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T199 FROM T199 LIMIT 1;

theCharVar = 'Hello from P1622';
dsply theCharVar;
P992();
P264();
P907();
return;