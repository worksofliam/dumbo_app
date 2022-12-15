**free

ctl-opt dftactgrp(*no);

dcl-pi P616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds T1175 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1175 FROM T1175 LIMIT 1;

theCharVar = 'Hello from P616';
dsply theCharVar;
P519();
P327();
P89();
return;