**free

ctl-opt dftactgrp(*no);

dcl-pi P392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds T109 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T109 FROM T109 LIMIT 1;

theCharVar = 'Hello from P392';
dsply theCharVar;
P21();
P339();
return;