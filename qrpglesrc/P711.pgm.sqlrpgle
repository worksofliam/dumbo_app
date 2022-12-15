**free

ctl-opt dftactgrp(*no);

dcl-pi P711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds T200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T200 FROM T200 LIMIT 1;

theCharVar = 'Hello from P711';
dsply theCharVar;
P239();
P67();
P251();
return;