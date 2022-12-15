**free

ctl-opt dftactgrp(*no);

dcl-pi P4690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1165.rpgleinc'
/copy 'qrpgleref/P3740.rpgleinc'
/copy 'qrpgleref/P4574.rpgleinc'

dcl-ds T383 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T383 FROM T383 LIMIT 1;

theCharVar = 'Hello from P4690';
dsply theCharVar;
P1165();
P3740();
P4574();
return;