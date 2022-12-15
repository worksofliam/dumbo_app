**free

ctl-opt dftactgrp(*no);

dcl-pi P920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'

dcl-ds T858 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T858 FROM T858 LIMIT 1;

theCharVar = 'Hello from P920';
dsply theCharVar;
P602();
P286();
P577();
return;