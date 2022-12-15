**free

ctl-opt dftactgrp(*no);

dcl-pi P5493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P3997.rpgleinc'

dcl-ds T1015 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1015 FROM T1015 LIMIT 1;

theCharVar = 'Hello from P5493';
dsply theCharVar;
P327();
P888();
P3997();
return;