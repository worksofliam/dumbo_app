**free

ctl-opt dftactgrp(*no);

dcl-pi P137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T129 FROM T129 LIMIT 1;

theCharVar = 'Hello from P137';
dsply theCharVar;
P34();
P15();
P51();
return;