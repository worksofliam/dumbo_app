**free

ctl-opt dftactgrp(*no);

dcl-pi P655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds T220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T220 FROM T220 LIMIT 1;

theCharVar = 'Hello from P655';
dsply theCharVar;
P330();
P577();
P96();
return;