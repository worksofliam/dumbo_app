**free

ctl-opt dftactgrp(*no);

dcl-pi P699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P620.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds T715 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T715 FROM T715 LIMIT 1;

theCharVar = 'Hello from P699';
dsply theCharVar;
P620();
P587();
P512();
return;