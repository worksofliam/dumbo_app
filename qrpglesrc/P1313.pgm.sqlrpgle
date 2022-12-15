**free

ctl-opt dftactgrp(*no);

dcl-pi P1313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds T1717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1717 FROM T1717 LIMIT 1;

theCharVar = 'Hello from P1313';
dsply theCharVar;
P337();
P78();
P571();
return;