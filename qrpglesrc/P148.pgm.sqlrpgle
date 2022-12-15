**free

ctl-opt dftactgrp(*no);

dcl-pi P148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T958 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T958 FROM T958 LIMIT 1;

theCharVar = 'Hello from P148';
dsply theCharVar;
P75();
P143();
P138();
return;