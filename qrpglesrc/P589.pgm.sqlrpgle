**free

ctl-opt dftactgrp(*no);

dcl-pi P589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T831 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T831 FROM T831 LIMIT 1;

theCharVar = 'Hello from P589';
dsply theCharVar;
P571();
P531();
P302();
return;