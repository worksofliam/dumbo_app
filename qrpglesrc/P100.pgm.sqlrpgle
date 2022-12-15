**free

ctl-opt dftactgrp(*no);

dcl-pi P100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds T91 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T91 FROM T91 LIMIT 1;

theCharVar = 'Hello from P100';
dsply theCharVar;
P49();
P31();
P36();
return;