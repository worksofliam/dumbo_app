**free

ctl-opt dftactgrp(*no);

dcl-pi P621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds T195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T195 FROM T195 LIMIT 1;

theCharVar = 'Hello from P621';
dsply theCharVar;
P231();
P166();
P130();
return;