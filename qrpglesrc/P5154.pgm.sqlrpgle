**free

ctl-opt dftactgrp(*no);

dcl-pi P5154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4465.rpgleinc'
/copy 'qrpgleref/P3427.rpgleinc'
/copy 'qrpgleref/P2319.rpgleinc'

dcl-ds T845 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T845 FROM T845 LIMIT 1;

theCharVar = 'Hello from P5154';
dsply theCharVar;
P4465();
P3427();
P2319();
return;