**free

ctl-opt dftactgrp(*no);

dcl-pi P5072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3221.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'
/copy 'qrpgleref/P3311.rpgleinc'

dcl-ds T1147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1147 FROM T1147 LIMIT 1;

theCharVar = 'Hello from P5072';
dsply theCharVar;
P3221();
P1129();
P3311();
return;