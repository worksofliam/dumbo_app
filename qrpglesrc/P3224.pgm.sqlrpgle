**free

ctl-opt dftactgrp(*no);

dcl-pi P3224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1835.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds T220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T220 FROM T220 LIMIT 1;

theCharVar = 'Hello from P3224';
dsply theCharVar;
P1835();
P595();
P659();
return;