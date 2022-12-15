**free

ctl-opt dftactgrp(*no);

dcl-pi P1822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P1726.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds T872 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T872 FROM T872 LIMIT 1;

theCharVar = 'Hello from P1822';
dsply theCharVar;
P481();
P1726();
P65();
return;