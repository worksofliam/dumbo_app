**free

ctl-opt dftactgrp(*no);

dcl-pi P239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds T226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T226 FROM T226 LIMIT 1;

theCharVar = 'Hello from P239';
dsply theCharVar;
P119();
P211();
P144();
return;