**free

ctl-opt dftactgrp(*no);

dcl-pi P201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds T272 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T272 FROM T272 LIMIT 1;

theCharVar = 'Hello from P201';
dsply theCharVar;
P110();
P105();
P158();
return;