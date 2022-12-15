**free

ctl-opt dftactgrp(*no);

dcl-pi P136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds T261 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T261 FROM T261 LIMIT 1;

theCharVar = 'Hello from P136';
dsply theCharVar;
P18();
P37();
P11();
return;